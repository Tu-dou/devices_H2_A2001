.class public Lcom/android/internal/util/pac/AppHelper;
.super Ljava/lang/Object;
.source "AppHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendlyActivityName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "labelOnly"    # Z

    .prologue
    .line 70
    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 71
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 73
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-nez v1, :cond_0

    if-nez p3, :cond_0

    .line 76
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 80
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "#Intent;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .end local v1    # "friendlyName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .restart local v1    # "friendlyName":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_2

    if-nez p3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFriendlyNameForUri(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p2, :cond_0

    const-string v1, "**"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    const/4 p2, 0x0

    .line 117
    .end local p2    # "uri":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 109
    .restart local p2    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/pac/AppHelper;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/pac/AppHelper;->getFriendlyShortcutName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getFriendlyShortcutName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, v2}, Lcom/android/internal/util/pac/AppHelper;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "activityName":Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "#Intent;"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 96
    .restart local v1    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_3
    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "settingsResources"    # Landroid/content/res/Resources;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "values"    # Ljava/lang/String;
    .param p5, "entries"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10406ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    :goto_0
    return-object v6

    .line 40
    :cond_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 41
    const/4 v3, -0x1

    .line 42
    .local v3, "resIdEntries":I
    const/4 v4, -0x1

    .line 44
    .local v4, "resIdValues":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.settings:array/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.settings:array/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 50
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 52
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "entriesArray":[Ljava/lang/String;
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "valuesArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 55
    aget-object v6, v5, v2

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    aget-object v6, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "entriesArray":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "valuesArray":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "resIdEntries":I
    .end local v4    # "resIdValues":I
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/android/internal/util/pac/AppHelper;->getFriendlyNameForUri(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getShortcutPreferred(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p2, :cond_0

    const-string v2, "**"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    :cond_0
    const/4 v1, 0x0

    .line 135
    :cond_1
    :goto_0
    return-object v1

    .line 126
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "#Intent;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_3
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lcom/android/internal/util/pac/AppHelper;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, p2

    .line 135
    goto :goto_0
.end method
