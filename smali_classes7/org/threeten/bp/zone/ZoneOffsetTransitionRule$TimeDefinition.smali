.class public final enum Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum STANDARD:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum UTC:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "UTC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 2
    new-instance v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v3, "WALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 3
    new-instance v3, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v5, "STANDARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    const-class v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    sget-object v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v0}, [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public createDateTime(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;
    .locals 2

    .line 1
    sget-object v0, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p3

    invoke-virtual {p2}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-long p2, p3

    .line 3
    invoke-virtual {p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p2

    sget-object p3, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {p3}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 5
    invoke-virtual {p1, p2, p3}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    return-object p1
.end method
