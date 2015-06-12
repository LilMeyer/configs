import os
import shutil
platform = os.sys.platform

linux = False
darwin = False
windows = False

if "darwin" == platform:
    darwin = True
    platform = "osx" # prettier than darwin
elif platform.startswith("linux"):
    linux = True
    platform = "linux"
# elif "win32" == platform:
#     windows = True
else:
    print( "No special config for [" + platform + "] which probably means it won't work" )

def copyDirectory(src, dst):
  for src_dir, dirs, files in os.walk(src):
    dst_dir = src_dir.replace(src, dst)
    if not os.path.exists(dst_dir):
      os.mkdir(dst_dir)
    for file_ in files:
      src_file = os.path.join(src_dir, file_)
      dst_file = os.path.join(dst_dir, file_)
      if os.path.exists(dst_file):
        os.remove(dst_file)
        # print "remove " + dst_file
      shutil.copy(src_file, dst_dir)
      # print "copy " + src_file + " " + dst_dir


def copyIfNotExists(src, dst):
  for src_dir, dirs, files in os.walk(src):
    dst_dir = src_dir.replace(src, dst)
    if not os.path.exists(dst_dir):
      os.mkdir(dst_dir)
      print "creating " + dst_dir
    for file_ in files:
      src_file = os.path.join(src_dir, file_)
      dst_file = os.path.join(dst_dir, file_)
      if not os.path.exists(dst_file):
        shutil.copy(src_file, dst_dir)
        print "copy " + src_file + " " + dst_dir


if darwin:
  print "=== MAC OSX ==="
  print "copying..."
  copyIfNotExists(".zshrc", os.environ['HOME'])
  copyIfNotExists(".shrc", os.environ['HOME'] + "/.shrc")
  copyIfNotExists(".bash-scripts", os.environ['HOME'] + "/.bash-scripts")
  print "=== END ==="

if linux:
  print "=== LINUX ==="
  print "copying..."
  copyIfNotExists(".zshrc", os.environ['HOME'])
  copyIfNotExists(".shrc", os.environ['HOME'] + "/.shrc")
  copyIfNotExists(".bash-scripts", os.environ['HOME'] + "/.bash-scripts")
  print "=== END ==="


if not os.path.exists(os.environ['HOME'] + "/bin"):
  os.mkdir(os.environ['HOME'] + "/bin")
os.symlink(os.environ['HOME'] + "/.bash-scripts/git-release.sh", os.environ['HOME'] + "/bin/git-release")
