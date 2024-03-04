.class Lcn/jiguang/az/g$1;
.super Lcn/jiguang/bd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/az/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/az/g;


# direct methods
.method constructor <init>(Lcn/jiguang/az/g;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/az/g$1;->a:Lcn/jiguang/az/g;

    invoke-direct {p0}, Lcn/jiguang/bd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "time is up, next period="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jiguang/az/h;->a()Lcn/jiguang/az/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/az/h;->g()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeriodWorker"

    invoke-static {v0, p1}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/az/g$1;->a:Lcn/jiguang/az/g;

    invoke-static {p1}, Lcn/jiguang/az/g;->a(Lcn/jiguang/az/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/az/g;->a(Lcn/jiguang/az/g;Landroid/content/Context;)V

    return-void
.end method
