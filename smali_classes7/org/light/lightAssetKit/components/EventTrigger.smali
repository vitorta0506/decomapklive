.class public Lorg/light/lightAssetKit/components/EventTrigger;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private event:Ljava/lang/String;

.field private startOffset:I

.field private timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/EventTrigger;->event:Ljava/lang/String;

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/EventTrigger;->startOffset:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/light/lightAssetKit/enums/TimeOffsetType;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/light/lightAssetKit/components/EventTrigger;->event:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/light/lightAssetKit/components/EventTrigger;->startOffset:I

    .line 7
    iput-object p3, p0, Lorg/light/lightAssetKit/components/EventTrigger;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/EventTrigger;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/EventTrigger;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/EventTrigger;->event:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/EventTrigger;->event:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/EventTrigger;->startOffset:I

    iput v1, p0, Lorg/light/lightAssetKit/components/EventTrigger;->startOffset:I

    .line 5
    iget-object v0, v0, Lorg/light/lightAssetKit/components/EventTrigger;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/EventTrigger;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/EventTrigger;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/EventTrigger;->startOffset:I

    return v0
.end method

.method public getTimeOffsetType()Lorg/light/lightAssetKit/enums/TimeOffsetType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/EventTrigger;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/EventTrigger;->event:Ljava/lang/String;

    const-string v0, "event"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/EventTrigger;->startOffset:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "startOffset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTimeOffsetType(Lorg/light/lightAssetKit/enums/TimeOffsetType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/EventTrigger;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    const-string v0, "timeOffsetType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "EventTrigger"

    return-object v0
.end method
