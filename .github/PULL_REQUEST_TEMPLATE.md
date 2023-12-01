### Summary

_Provide a general description of the code changes in your pull request... were there any bugs you had fixed? If so, mention them. If these bugs have open GitHub issues, be sure to tag them here as well, to keep the conversation linked together._

<details>
<summary><strong>PR Checklist</strong></summary>

- [ ] Added specs
- [ ] Tested changes in [staging](https://support-chatops.githubapp.com/#Staging_): `.deploy support-chatops/${HEAD_BRANCH} to staging`
- [ ] Get review from CODEOWNER
- [ ] Deploy branch to [production](https://support-chatops.githubapp.com/#Production): `.deploy support-chatops/${HEAD_BRANCH}`
- [ ] Cron Job
  - [ ] New [RPC ChatOps](https://github.com/github/hubot-rpc-config#adding-new-rpc-endpoints) command?
  _Command prefixes must be registered in [github/hubot-rpc-config](https://github.com/github/hubot-rpc-config) by [raising a PR](https://github.com/github/hubot-rpc-config/compare?expand=1) before they will be recognised by Hubot in Staging or Production._
  - [ ] Updated [`github/hubot-rpc-config`](https://github.com/github/hubot-rpc-config)
  - [ ] PR approved
- [ ] New or Updated `chatop` endpoint?
  _New or changed [`chatop` method names](https://github.com/github/support-chatops/blob/03a98f634788ad827dbf344724ee47f7db35777b/app/controllers/concerns/hello_world.rb#L9) must have their [channel affinity](https://support-chatops.githubapp.com/#Creating_a_ChatOps_command_manually) declared._
  - [ ] Updated [`slack-restrictions.yml`](https://github.com/github/support-chatops/blob/master/config/slack_restrictions.yml)
</details>
