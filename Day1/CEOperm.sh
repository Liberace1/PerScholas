#!/bin/bash
#add CEO to all groups
usermod -aG IT gahattleburg
usermod -aG CEO gahattleburg
usermod -aG HR gahattleburg
usermod -aG Finance gahattleburg
usermod -aG Operations gahattleburg


#set permissions
# For IT directory
# For IT directory
setfacl -R -m u:"gahattleburg":rX IT

# For Executive directory
setfacl -R -m u:"gahattleburg":rX Executive

# For HR directory
setfacl -R -m u:"gahattleburg":rX HR

# For Finance directory
setfacl -R -m u:"gahattleburg":rX Finance

# For Operations directory
setfacl -R -m u:"gahattleburg":rX Operations


