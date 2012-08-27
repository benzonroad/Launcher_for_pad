.class Lcom/android/launcher2/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/IconCache;)V
    .locals 2
    .parameter "iconCache"

    .prologue
    const/16 v1, 0x2a

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 55
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 205
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 207
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const/4 v3, 0x1

    .line 211
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v3

    .line 205
    .restart local v2       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 192
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 193
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const/4 v4, 0x1

    .line 197
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 219
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 220
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/launcher2/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsFlashplayerVisible:Z

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.adobe.flashplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 96
    invoke-static {p1, p2}, Lcom/android/launcher2/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 99
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    goto :goto_0

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    .line 110
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 112
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v3, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 119
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v4}, Lcom/android/launcher2/IconCache;->flush()V

    .line 120
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 126
    invoke-static {p1, p2}, Lcom/android/launcher2/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 127
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 130
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 131
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 132
    .local v0, applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 133
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-static {v5, v1}, Lcom/android/launcher2/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 137
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 144
    .end local v0           #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 145
    .local v2, count:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 146
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 147
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;

    move-result-object v0

    .line 150
    .restart local v0       #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    if-nez v0, :cond_2

    .line 151
    new-instance v6, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-direct {v6, v7, v4, v8, v9}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 145
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    iget-object v7, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 154
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v0, v4, v9}, Lcom/android/launcher2/IconCache;->getTitleAndIcon(Lcom/android/launcher2/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V

    .line 155
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    .end local v0           #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .restart local v3       #i:I
    :goto_3
    if-ltz v3, :cond_5

    .line 161
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 162
    .restart local v0       #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 163
    .restart local v1       #component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 166
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 170
    .end local v0           #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_5
    return-void
.end method
