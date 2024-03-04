.class Lcn/jiguang/ak/a$1;
.super Lcn/jiguang/o/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/ak/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/ak/a;


# direct methods
.method constructor <init>(Lcn/jiguang/ak/a;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/ak/a$1;->a:Lcn/jiguang/ak/a;

    invoke-direct {p0}, Lcn/jiguang/o/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/ak/a$1;->a:Lcn/jiguang/ak/a;

    invoke-static {v0}, Lcn/jiguang/ak/a;->b(Lcn/jiguang/ak/a;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/ak/a$1;->a:Lcn/jiguang/ak/a;

    invoke-static {v1}, Lcn/jiguang/ak/a;->a(Lcn/jiguang/ak/a;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addGpsStatusListener error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellHelper"

    invoke-static {v1, v0}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
