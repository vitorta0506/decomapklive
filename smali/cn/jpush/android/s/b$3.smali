.class Lcn/jpush/android/s/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/jpush/android/r/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/s/b;->a(Landroid/view/WindowManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/jpush/android/s/b;


# direct methods
.method constructor <init>(Lcn/jpush/android/s/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/s/b$3;->b:Lcn/jpush/android/s/b;

    iput-object p2, p0, Lcn/jpush/android/s/b$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    iget-object p2, p0, Lcn/jpush/android/s/b$3;->b:Lcn/jpush/android/s/b;

    iget-object v0, p2, Lcn/jpush/android/s/c;->b:Lcn/jpush/android/s/c$a;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcn/jpush/android/s/c;->a:Lcn/jpush/android/x/e;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    iput v1, p2, Lcn/jpush/android/x/e;->u:I

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/s/b$3;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcn/jpush/android/s/c$a;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method