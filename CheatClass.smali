.method protected onCreate(Landroid/os/Bundle;)V

    ...

    ##From here (after .locals)
    
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/CheatClass;->addCoins(Landroid/app/Activity;)V # change the package name of CheatClass

    ##To here
    ...
.end method