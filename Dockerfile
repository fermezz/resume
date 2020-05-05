FROM oehrlis/latex

RUN tlmgr option repository ctan && \
    tlmgr update --self && \
    tlmgr install enumitem

CMD ["echo", "placebo"]
