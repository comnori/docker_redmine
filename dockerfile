FROM redmine:5-bullseye

LABEL image.author="comnori@gmail.com" \
      description="Redmine 5.0.0 with plugins" \
      version="5.0.0" \
      plugins.code_review="1.1.0" \
      plugins.dashboard="2.11.1" \
      plugins.wysiwyg_editor="0.26.0"

ENV PLUGIN_DIR=/usr/src/redmine/plugins

# ADD ./plugins/redmine_dashboard-2.12.1.tar.gz/ ${PLUGIN_DIR}
# RUN mv ${PLUGIN_DIR}/redmine_dashboard-2.12.1 ${PLUGIN_DIR}/redmine_dashboard
# ADD ./plugins/redmine_code_review-1.1.0.tar.gz/ ${PLUGIN_DIR}
# RUN mv ${PLUGIN_DIR}/redmine_code_review-1.1.0 ${PLUGIN_DIR}/redmine_code_review
ADD ./plugins/redmine_wysiwyg_editor-0.26.0.tar.gz/ ${PLUGIN_DIR}
RUN mv ${PLUGIN_DIR}/redmine_wysiwyg_editor-0.26.0 ${PLUGIN_DIR}/redmine_wysiwyg_editor



