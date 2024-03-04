.class final Leh/p2$j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "failedVersion"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/p2$j$b;->a:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Leh/p2$j$b;->b:J

    const-string p1, "failedDetails"

    .line 5
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/p2$j$b;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Leh/p2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Leh/p2$j$b;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
