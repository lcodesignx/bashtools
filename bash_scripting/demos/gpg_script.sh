#!/bin/bash

# Program used to export gpg keys
ID='lupera1'

gpg --export-secret-keys $ID > my-private-key.asc
