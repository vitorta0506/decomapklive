.class public Lorg/light/lightAssetKit/components/TransitionEventInfos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public selectionID:I

.field public timeOffset:I

.field public timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/TransitionEventInfos;->timeOffset:I

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/TimeOffsetType;->End:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/TransitionEventInfos;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    return-void
.end method

.method public constructor <init>(IILorg/light/lightAssetKit/enums/TimeOffsetType;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/TransitionEventInfos;->timeOffset:I

    .line 6
    sget-object v0, Lorg/light/lightAssetKit/enums/TimeOffsetType;->End:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    .line 7
    iput p1, p0, Lorg/light/lightAssetKit/components/TransitionEventInfos;->selectionID:I

    .line 8
    iput p2, p0, Lorg/light/lightAssetKit/components/TransitionEventInfos;->timeOffset:I

    .line 9
    iput-object p3, p0, Lorg/light/lightAssetKit/components/TransitionEventInfos;->timeOffsetType:Lorg/light/lightAssetKit/enums/TimeOffsetType;

    return-void
.end method
