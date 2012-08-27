.class Lcom/android/launcher2/Launcher$23;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$cling:Lcom/android/launcher2/Cling;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3691
    iput-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$23;->val$cling:Lcom/android/launcher2/Cling;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$23;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 3693
    iget-object v2, p0, Lcom/android/launcher2/Launcher$23;->val$cling:Lcom/android/launcher2/Cling;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 3694
    iget-object v2, p0, Lcom/android/launcher2/Launcher$23;->val$cling:Lcom/android/launcher2/Cling;

    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->cleanup()V

    .line 3695
    iget-object v2, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3697
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3698
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$23;->val$flag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3700
    return-void
.end method
