.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;",
        "",
        "()V",
        "timeToString",
        "",
        "timeInMillis",
        "",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final timeToString(J)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 v0, 0x1f4

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 2
    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    div-int/lit8 v0, p2, 0x3c

    const-string v1, "0"

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    rem-int/lit8 p2, p2, 0x3c

    if-ge p2, v2, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
