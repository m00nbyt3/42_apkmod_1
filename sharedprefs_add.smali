.class public Lcom/unity3d/player/CheatClass; # Here change your package name
.super Ljava/lang/Object;
.source "CheatClass.java"

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCoins(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"

    .line 9
    const-string v0, "player_prefs" # Here change the preference file name

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 10
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 11
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "money_count" # Here the key name

    const v3, 0x5f5e0ff # And here the value to change

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    return-void
.end method