.class public final enum Lcom/rd/draw/data/RtlMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rd/draw/data/RtlMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rd/draw/data/RtlMode;

.field public static final enum Auto:Lcom/rd/draw/data/RtlMode;

.field public static final enum Off:Lcom/rd/draw/data/RtlMode;

.field public static final enum On:Lcom/rd/draw/data/RtlMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/rd/draw/data/RtlMode;

    const-string v1, "On"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rd/draw/data/RtlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rd/draw/data/RtlMode;->On:Lcom/rd/draw/data/RtlMode;

    new-instance v1, Lcom/rd/draw/data/RtlMode;

    const-string v3, "Off"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/rd/draw/data/RtlMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    new-instance v3, Lcom/rd/draw/data/RtlMode;

    const-string v5, "Auto"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/rd/draw/data/RtlMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/rd/draw/data/RtlMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/rd/draw/data/RtlMode;->$VALUES:[Lcom/rd/draw/data/RtlMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rd/draw/data/RtlMode;
    .locals 1

    const-class v0, Lcom/rd/draw/data/RtlMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rd/draw/data/RtlMode;

    return-object p0
.end method

.method public static values()[Lcom/rd/draw/data/RtlMode;
    .locals 1

    sget-object v0, Lcom/rd/draw/data/RtlMode;->$VALUES:[Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v0}, [Lcom/rd/draw/data/RtlMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rd/draw/data/RtlMode;

    return-object v0
.end method
