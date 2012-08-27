.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3776
    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 3778
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3779
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3782
    .local v4, childCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    if-ge v12, v4, :cond_8

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3784
    .local v18, view:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 3786
    .local v17, tag:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v9, v17

    .line 3787
    check-cast v9, Lcom/android/launcher2/ShortcutInfo;

    .line 3788
    .local v9, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v9, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3789
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3791
    .local v14, name:Landroid/content/ComponentName;
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    if-eqz v14, :cond_7

    .line 3792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3793
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3795
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3799
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v9, v17

    .line 3800
    check-cast v9, Lcom/android/launcher2/FolderInfo;

    .line 3801
    .local v9, info:Lcom/android/launcher2/FolderInfo;
    iget-object v6, v9, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3802
    .local v6, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3803
    .local v7, contentsCount:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3806
    .local v2, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v13, 0x0

    .local v13, k:I
    :goto_2
    if-ge v13, v7, :cond_4

    .line 3807
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 3808
    .local v1, appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v10, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3809
    .restart local v10       #intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3811
    .restart local v14       #name:Landroid/content/ComponentName;
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-eqz v14, :cond_3

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3813
    .restart local v15       #packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 3814
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3806
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3819
    .end local v1           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/ShortcutInfo;

    .line 3820
    .local v11, item:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9, v11}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_4

    .line 3823
    .end local v2           #appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v6           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v7           #contentsCount:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/FolderInfo;
    .end local v11           #item:Lcom/android/launcher2/ShortcutInfo;
    .end local v13           #k:I
    :cond_5
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v9, v17

    .line 3824
    check-cast v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 3825
    .local v9, info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 3827
    .local v16, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v16, :cond_7

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3829
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 3830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3831
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3782
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 3838
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #view:Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3839
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v4, :cond_a

    .line 3840
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3843
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3844
    instance-of v0, v3, Lcom/android/launcher2/DropTarget;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 3845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    #getter for: Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$3200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v19

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3839
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3849
    :cond_a
    if-lez v4, :cond_b

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->invalidate()V

    .line 3853
    :cond_b
    return-void
.end method
