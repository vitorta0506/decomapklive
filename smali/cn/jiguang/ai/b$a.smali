.class Lcn/jiguang/ai/b$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/ai/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/ai/b;


# direct methods
.method private constructor <init>(Lcn/jiguang/ai/b;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jiguang/ai/b;Lcn/jiguang/ai/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/ai/b$a;-><init>(Lcn/jiguang/ai/b;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {v0}, Lcn/jiguang/ai/b;->a(Lcn/jiguang/ai/b;)Lcn/jiguang/aj/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    iput p1, v0, Lcn/jiguang/aj/a;->f:I

    iget-object p1, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {p1}, Lcn/jiguang/ai/b;->b(Lcn/jiguang/ai/b;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    iget-object v0, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {v0}, Lcn/jiguang/ai/b;->a(Lcn/jiguang/ai/b;)Lcn/jiguang/aj/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcn/jiguang/aj/a;->e:I

    iget-object v0, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {v0}, Lcn/jiguang/ai/b;->a(Lcn/jiguang/ai/b;)Lcn/jiguang/aj/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    :goto_0
    iput p1, v0, Lcn/jiguang/aj/a;->d:I

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    iget-object v0, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {v0}, Lcn/jiguang/ai/b;->a(Lcn/jiguang/ai/b;)Lcn/jiguang/aj/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v0, Lcn/jiguang/aj/a;->e:I

    iget-object v0, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {v0}, Lcn/jiguang/ai/b;->a(Lcn/jiguang/ai/b;)Lcn/jiguang/aj/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/jiguang/ai/b$a;->a:Lcn/jiguang/ai/b;

    invoke-static {p1}, Lcn/jiguang/ai/b;->b(Lcn/jiguang/ai/b;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
