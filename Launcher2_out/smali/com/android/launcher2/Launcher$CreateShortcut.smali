.class Lcom/android/launcher2/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher2/AddAdapter;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3245
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 3278
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3282
    :goto_0
    return-void

    .line 3279
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3252
    new-instance v2, Lcom/android/launcher2/AddAdapter;

    iget-object v3, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher2/AddAdapter;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    .line 3254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3256
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3259
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3260
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3261
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3263
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2702(Lcom/android/launcher2/Launcher;Z)Z

    .line 3268
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 3269
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 3288
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 3290
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/AddAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AddAdapter$ListItem;

    .line 3291
    .local v0, item:Lcom/android/launcher2/AddAdapter$ListItem;
    iget v1, v0, Lcom/android/launcher2/AddAdapter$ListItem;->actionTag:I

    packed-switch v1, :pswitch_data_0

    .line 3311
    :goto_0
    return-void

    .line 3293
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3294
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->selectAppsTab()V

    .line 3296
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_0

    .line 3300
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3301
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->selectWidgetsTab()V

    .line 3303
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto :goto_0

    .line 3307
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->startWallpaper()V
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$3400(Lcom/android/launcher2/Launcher;)V

    goto :goto_0

    .line 3291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2702(Lcom/android/launcher2/Launcher;Z)Z

    .line 3273
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 3274
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2702(Lcom/android/launcher2/Launcher;Z)Z

    .line 3315
    return-void
.end method
