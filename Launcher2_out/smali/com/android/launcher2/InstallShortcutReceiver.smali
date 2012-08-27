.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# instance fields
.field private final mCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 18
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 93
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    .line 94
    .local v4, xCount:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    .line 95
    .local v5, yCount:I
    filled-new-array {v4, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 97
    .local v6, occupied:[[Z
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    .line 98
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    const/4 v10, 0x0

    .line 100
    .local v10, item:Lcom/android/launcher2/ItemInfo;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 101
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #item:Lcom/android/launcher2/ItemInfo;
    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 102
    .restart local v10       #item:Lcom/android/launcher2/ItemInfo;
    iget-wide v1, v10, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v1, v1, v16

    if-nez v1, :cond_1

    .line 103
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_1

    .line 104
    iget v7, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 105
    .local v7, cellX:I
    iget v8, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 106
    .local v8, cellY:I
    iget v12, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 107
    .local v12, spanX:I
    iget v13, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 108
    .local v13, spanY:I
    move v14, v7

    .local v14, x:I
    :goto_1
    add-int v1, v7, v12

    if-ge v14, v1, :cond_1

    if-ge v14, v4, :cond_1

    .line 109
    move v15, v8

    .local v15, y:I
    :goto_2
    add-int v1, v8, v13

    if-ge v15, v1, :cond_0

    if-ge v15, v5, :cond_0

    .line 110
    aget-object v1, v6, v14

    const/4 v2, 0x1

    aput-boolean v2, v1, v15

    .line 109
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 108
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 100
    .end local v7           #cellX:I
    .end local v8           #cellY:I
    .end local v12           #spanX:I
    .end local v13           #spanY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 117
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v1

    return v1
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 16
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    .line 54
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 56
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    const-string v2, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 58
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_5

    .line 59
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 60
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_0
    const-string v2, "duplicate"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 66
    .local v12, duplicate:Z
    if-nez v12, :cond_1

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherApplication;

    .line 68
    .local v11, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    const-wide/16 v5, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v13

    .line 71
    .local v13, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v13, :cond_2

    .line 72
    const v2, 0x7f0c0019

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    .end local v11           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v13           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_0
    const/4 v2, 0x1

    .line 89
    .end local v12           #duplicate:Z
    .end local v14           #intent:Landroid/content/Intent;
    :goto_1
    return v2

    .line 75
    .restart local v11       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v12       #duplicate:Z
    .restart local v13       #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    .end local v11           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v13           #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_3
    const v2, 0x7f0c001b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    .end local v12           #duplicate:Z
    .end local v14           #intent:Landroid/content/Intent;
    :cond_4
    const v2, 0x7f0c0017

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 89
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 39
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getScreen()I

    move-result v1

    .line 45
    .local v1, screen:I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 48
    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
