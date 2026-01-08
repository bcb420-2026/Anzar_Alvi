FROM risserlin/bcb420-base-image:winter2026-arm64

RUN R -e "if (!requireNamespace('BiocManager', quietly=TRUE)) install.packages('BiocManager', repos='https://cloud.r-project.org'); \
          BiocManager::install(c('DESeq2','enrichplot'), ask=FALSE, update=FALSE); \
          install.packages('pheatmap', repos='https://cloud.r-project.org')"