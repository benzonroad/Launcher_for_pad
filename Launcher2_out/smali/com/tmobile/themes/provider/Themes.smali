.class public Lcom/tmobile/themes/provider/Themes;
.super Ljava/lang/Object;
.source "Themes.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://com.tmobile.thememanager.themes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tmobile/themes/provider/Themes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTheme(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    const-string v0, "android.permission.CHANGE_CONFIGURATION"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static changeTheme(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "themeUri"

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tmobile.intent.action.CHANGE_THEME"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/tmobile/themes/provider/Themes;->changeTheme(Landroid/content/Context;Landroid/content/Intent;)V

    .line 152
    return-void
.end method
