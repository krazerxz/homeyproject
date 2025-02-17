# Homey Project Conversation

```
bundle
rails db:migrate
rails s
```

![Screenshot 2025-02-17 at 20 59 15](https://github.com/user-attachments/assets/661a53d1-ee74-4ba8-8c2a-263f64ed9221)

Limited Scope:
I limited the scope of this task to the minimum required functionality:
- Comments do not belong to a user/account (there are no users/accounts), cannot be edited of destroyed.
- 'Users' are not restricted to commenting on projects they have permission to access.
- Brittle implementation - For simplicity, assume the only possible events are create-comment and update-project-status


Choices - Things excluded for this task that would be done for real world project:
- spec and feature tests - rspec / cucumber
- Authentication / Autorization - Devide / (pundit/cancancan)
- Standalone database - e.g. Postgres
- CI / code quality / Build / Deployment process - e.g. Github Actions / rubocop / Helm / ArgoCD
- Any styling
- Any JS/Frontend libraries - e.g. React/Tailwind
- Native app rather than containerised
- Monitoring / Error tracking - e.g. Datadog / Airbrake
- Pagination of events

Initialised with:
`rails new homeyproject --skip-docker --skip-action-mailer --skip-action-mailbox --skip-active-job --skip-active-storage --skip-action-cable --skip-hotwire --skip-jbuilder --skip-test --skip-system-test --skip-thruster --skip-ci --skip-kamal --skip-solid`
