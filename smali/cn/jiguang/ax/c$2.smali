.class final Lcn/jiguang/ax/c$2;
.super Lcn/jiguang/bg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/ax/c;->f(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/ax/c$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/jiguang/ax/c$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcn/jiguang/bg/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcn/jiguang/ax/c$2;->a:Ljava/lang/String;

    const-string v2, "jg_device_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/ax/c$2;->b:Landroid/content/Context;

    const-string v2, "device_id_map"

    invoke-static {v1, v2, v0}, Lcn/jiguang/az/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
