# Cleanup script to prepare code for merge
# It will undo changes caused by the bootstrap script by default in order.

source "$(dirname "$0")/util.sh"
source "$(dirname "$0")/functions.sh"

# Reset Git Values
echo "Resetting Git Values"
patch_file "components/argocd/apps/base/cluster-config-app-of-apps.yaml" "main" ".spec.source.targetRevision"
patch_file "components/argocd/apps/base/cluster-config-app-of-apps.yaml" "https://github.com/redhat-composer-ai/cluster-gitops.git" ".spec.source.repoURL"

# Reset Domain Values
echo "Resetting Domain Values"
patch_file "tenants/composer-ai/apps/base/patch-app-of-apps.yaml" "<REPLACE_ME>" ".[0].value" 
patch_file "tenants/composer-ai/argocd/base/patch-link.yaml" "<REPLACE_ME>" ".[0].value" 

echo -e "\e[32mValues reset locally. Please commit and push changes to the repository.\e[0m"
