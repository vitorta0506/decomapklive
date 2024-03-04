.class final Leh/a2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Leh/a2$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lio/grpc/x;


# direct methods
.method private constructor <init>(JLio/grpc/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Leh/a2$c;->a:J

    .line 4
    iput-object p3, p0, Leh/a2$c;->b:Lio/grpc/x;

    return-void
.end method

.method synthetic constructor <init>(JLio/grpc/x;Leh/a2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leh/a2$c;-><init>(JLio/grpc/x;)V

    return-void
.end method

.method static synthetic a(Leh/a2$c;)J
    .locals 2

    iget-wide v0, p0, Leh/a2$c;->a:J

    return-wide v0
.end method

.method static synthetic b(Leh/a2$c;)Lio/grpc/x;
    .locals 0

    iget-object p0, p0, Leh/a2$c;->b:Lio/grpc/x;

    return-object p0
.end method


# virtual methods
.method public c(Leh/a2$c;)I
    .locals 4

    iget-wide v0, p0, Leh/a2$c;->a:J

    iget-wide v2, p1, Leh/a2$c;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Leh/a2$c;

    invoke-virtual {p0, p1}, Leh/a2$c;->c(Leh/a2$c;)I

    move-result p1

    return p1
.end method
