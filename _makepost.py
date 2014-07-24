import datetime
import getpass
import os.path
import re
import uuid
import yaml


mkslug = lambda t:re.sub("[^\w\d]+", '-', t).lower()

def get_post_id(read_only=False):
    with open('.post_id', 'rb') as infile:
        post_id = int(infile.read())
    if not read_only:
        post_id += 1
        with open('.post_id', 'wb') as outfile:
            outfile.write(str(post_id))
    return post_id


def mkpost():

    title = raw_input("Title: ")
    slug = mkslug(title)
    now = datetime.datetime.utcnow()

    directory = os.path.join('archives', now.strftime("%Y/%m/%d"))

    if not os.path.exists(directory) and not os.path.isdir(directory):
        os.makedirs(directory)
        print("[*] made directory {0}".format(directory))

    filename = os.path.join(directory, slug + '.rst')
    with open(filename, 'wb') as outfile:
        yaml.dump({
                   'author': getpass.getuser(),
                   'disqus_id': str(uuid.uuid4()),
                   'disqus_url': "http://www.tssci-security.com/{0}/{1}/".format(directory, slug),
                   'parent': 0,
                   'post_id': get_post_id(),
                   'post_type': 'post',
                   'pub_date': now.strftime("%Y-%m-%d %H:%M:%S"),
                   'public': 'yes',
                   'slug': slug,
                   'tags': ['security'],
                   'template': 'post.html',
                   'title': title},
            stream=outfile,
            default_flow_style=False)

        outfile.write("\n{0}\n{1}\n".format(title, '#' * len(title)))
        print("[*] Created new blog entry at {0}".format(filename))

if __name__ == '__main__':
    mkpost()
