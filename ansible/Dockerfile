From mullnerz/ansible-playbook as builder
WORKDIR /ansible/playbooks
COPY compose-creator.yml /ansible/playbooks
COPY files/environments/dev /ansible/playbooks/files/environments/dev
COPY files/services/scisupplier_eft-switch /ansible/playbooks/files/services/scisupplier_eft-switch
COPY templates/odap-docker-compose.j2 /ansible/playbooks/templates/odap-docker-compose.j2
RUN ansible-playbook /ansible/playbooks/compose-creator.yml
RUN ls -l ~/git_repos/TechOps
RUN cp -r ~/git_repos/TechOps/config/stacks/* /tmp
RUN pwd

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /tmp .
CMD ["/bin/sh"]
