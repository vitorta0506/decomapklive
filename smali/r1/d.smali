.class public final Lr1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/d$a;
    }
.end annotation


# static fields
.field private static final c:Lr1/d;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/d$a;

    invoke-direct {v0}, Lr1/d$a;-><init>()V

    invoke-virtual {v0}, Lr1/d$a;->a()Lr1/d;

    move-result-object v0

    sput-object v0, Lr1/d;->c:Lr1/d;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lr1/d;->a:J

    .line 3
    iput-wide p3, p0, Lr1/d;->b:J

    return-void
.end method

.method public static c()Lr1/d$a;
    .locals 1

    new-instance v0, Lr1/d$a;

    invoke-direct {v0}, Lr1/d$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    iget-wide v0, p0, Lr1/d;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    iget-wide v0, p0, Lr1/d;->b:J

    return-wide v0
.end method
