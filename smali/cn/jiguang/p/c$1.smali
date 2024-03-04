.class Lcn/jiguang/p/c$1;
.super Lcn/jiguang/o/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/p/c;->a(Landroid/content/Context;Lcn/jiguang/p/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic c:Lcn/jiguang/p/b;

.field final synthetic d:Lcn/jiguang/p/c;


# direct methods
.method constructor <init>(Lcn/jiguang/p/c;Landroid/content/Context;Lcn/jiguang/p/b;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/p/c$1;->d:Lcn/jiguang/p/c;

    iput-object p2, p0, Lcn/jiguang/p/c$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/jiguang/p/c$1;->c:Lcn/jiguang/p/b;

    invoke-direct {p0}, Lcn/jiguang/o/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/p/c$1;->d:Lcn/jiguang/p/c;

    iget-object v1, p0, Lcn/jiguang/p/c$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jiguang/p/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request config error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDataConfigManager"

    invoke-static {v1, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcn/jiguang/p/c$1;->c:Lcn/jiguang/p/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/jiguang/p/b;->a()V

    :cond_0
    return-void
.end method
