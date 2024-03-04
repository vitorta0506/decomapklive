.class Lcn/jiguang/ak/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field private a:Lcn/jiguang/ak/a;


# direct methods
.method constructor <init>(Lcn/jiguang/ak/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/ak/i;)Lcn/jiguang/ak/a;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    return-object p0
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 11

    const-wide/16 v0, 0x3e8

    const-string v2, "GpsStatuListener"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    iget-wide v6, p1, Lcn/jiguang/ak/a;->d:J

    sub-long v6, v4, v6

    sget-wide v8, Lcn/jiguang/ak/c;->m:J

    mul-long v8, v8, v0

    const/4 v0, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    iput-wide v4, p1, Lcn/jiguang/ak/a;->d:J

    iput v0, p1, Lcn/jiguang/ak/a;->f:I

    :cond_1
    iget v1, p1, Lcn/jiguang/ak/a;->f:I

    const/4 v6, 0x3

    if-ge v1, v6, :cond_3

    iget-wide v6, p1, Lcn/jiguang/ak/a;->e:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7d0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    add-int/2addr v1, v3

    iput v1, p1, Lcn/jiguang/ak/a;->f:I

    iput-wide v4, p1, Lcn/jiguang/ak/a;->e:J

    invoke-static {}, Lcn/jiguang/ak/d;->a()Lcn/jiguang/ak/d;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/ak/d;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    invoke-virtual {p1, v3}, Lcn/jiguang/ak/a;->a(Z)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    iget-object v1, v1, Lcn/jiguang/ak/a;->a:Landroid/location/Location;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    sget v3, Lcn/jiguang/ak/c;->n:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    :cond_2
    new-instance v1, Lcn/jiguang/ak/i$1;

    invoke-direct {v1, p0, p1}, Lcn/jiguang/ak/i$1;-><init>(Lcn/jiguang/ak/i;Landroid/location/Location;)V

    new-array v0, v0, [I

    invoke-static {v1, v0}, Lcn/jiguang/av/b;->d(Ljava/lang/Runnable;[I)V

    iget-object v0, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, v0, Lcn/jiguang/ak/a;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGpsStatus error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p1, "onGpsStatus start"

    invoke-static {v2, p1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/ak/i;->a:Lcn/jiguang/ak/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcn/jiguang/ak/c;->m:J

    mul-long v4, v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcn/jiguang/ak/a;->d:J

    return-void
.end method
