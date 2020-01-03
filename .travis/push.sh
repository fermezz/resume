#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_resume_files() {
  git checkout -b resume-changes
  git add resume*
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-resume https://${GITHUB_TOKEN}@github.com/fermezz/resume.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-resume resume-changes
}

setup_git
commit_resume_files
upload_files
