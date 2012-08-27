.class public final Lcom/android/launcher2/LauncherPreferences;
.super Ljava/lang/Object;
.source "LauncherPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTransitionEffect(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher2/Workspace$TransitionEffect;
    .locals 3
    .parameter "context"
    .parameter "def"

    .prologue
    .line 10
    const-string v1, "com.android.Launcher_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 11
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "ui_homescreen_scrolling_transition_effect"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/Workspace$TransitionEffect;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$TransitionEffect;

    move-result-object v1

    return-object v1
.end method
