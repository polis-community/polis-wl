# Pol.is as a blackbox API service called by one's backend

## polis-community change

This a fork from the fork that:
- correct various bugs (see the latest PRs)
- extract the PGSQL database from the compose to an external DB
- make authentication optional to interact with the API for creating users, conversations, opinions, votes
- allow to use external `conversation_id`, `user_id` (mapped to `ownername` and `users.hname`) and `opinion_id` (mapped to unique `comments.txt` SQL column)
- (work-in-progress) allow to delete comments/votes
- see the Bruno API Collection for details

# Initial REAMDE:  Pol.is Whitelabel

Pol.is Whitelabel is a fork of [Pol.is](https://github.com/compdemocracy/polis). Pol.is is
a system for understanding what large groups of people think about an issue. Pol.is Whitelabel is a pared down version of Pol.is with the goals of separating out deployment code from application code, make the system more configurable and refactoring to make feature development more straightforward.

## Key differences from Pol.is

The following things are different:

* Heroku config removed
* Bundlewatch removed
* Maxmind integration removed
* Stripe integration removed
* Intercom integration removed
* Project runs Node 18 (with the exception of `server` on Ubuntu)
* Lots of vulnerable dependencies updated
* Database setup has moved into its own directory
* Started work reducing the file sizes
* Working developer environment documented
* Rapid setup of the development environment
* Basic performance tests included (note this may get migrated out to deployment repo soon)

## Deployment

We have three different scenarios for deployment

* [Devcontainer](./.devcontainer/README.md)  (development)
* [Docker](./deploy/docker/README.md) (production/testing)
* [Virtual Machine](./deploy/vm/README.md) (production/testing/development)

## Testing

See [e2e/README.md](./e2e/README.md) for instructions on running the end-to-end tests

## Vulnerability scanning

Using Docker you can scan a built image using,

 ```docker scout cves <image-name>:latest```
 
 For the `math` module, the root dependencies in `deps.edn` can be found by out by running

 ```clojure -Stree```

## Architecture

* `database/` is migrations and config for the PostgreSQL database
* `server/` is the main Node.js server
    * connects to: database
    * connects to: file-server
* `math/` is the statistics service in Clojure
    * connects to: server
    * connects to: database
* `file-server/` is the service that serves the JS frontend apps:
    * `client-admin/` is for conversation administrators
    * `client-participation/` is for end-users
    * `client-report/` is for detailed analytics reports

## License

[AGPLv3 with additional permission under section 7](LICENSE)
