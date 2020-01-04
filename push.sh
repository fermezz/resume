#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_resume_files() {
  git checkout -b resume-changes-${TRAVIS_BUILD_NUMBER}
  git add resume*
  git commit --message "Update resume.pdf automatically."
}

upload_files() {
  git remote add origin-resume https://${GITHUB_TOKEN}@github.com/fermezz/resume.git
  git push --quiet --set-upstream origin-resume resume-changes-${TRAVIS_BUILD_NUMBER}
}

setup_git
commit_resume_files
upload_files
