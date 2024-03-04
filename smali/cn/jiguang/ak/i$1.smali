.class Lcn/jiguang/ak/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/ak/i;->onGpsStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcn/jiguang/ak/i;


# direct methods
.method constructor <init>(Lcn/jiguang/ak/i;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/ak/i$1;->b:Lcn/jiguang/ak/i;

    iput-object p2, p0, Lcn/jiguang/ak/i$1;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/ak/i$1;->b:Lcn/jiguang/ak/i;

    invoke-static {v0}, Lcn/jiguang/ak/i;->a(Lcn/jiguang/ak/i;)Lcn/jiguang/ak/a;

    move-result-object v0

    iget-object v0, v0, Lcn/jiguang/ak/a;->c:Lcn/jiguang/ak/f;

    iget-object v1, p0, Lcn/jiguang/ak/i$1;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcn/jiguang/ak/f;->a(Landroid/location/Location;)V

    return-void
.end method
