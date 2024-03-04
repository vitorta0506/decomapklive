.class public final Lr1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/e$a;
    }
.end annotation


# static fields
.field private static final c:Lr1/e;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/e$a;

    invoke-direct {v0}, Lr1/e$a;-><init>()V

    invoke-virtual {v0}, Lr1/e$a;->a()Lr1/e;

    move-result-object v0

    sput-object v0, Lr1/e;->c:Lr1/e;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lr1/e;->a:J

    .line 3
    iput-wide p3, p0, Lr1/e;->b:J

    return-void
.end method

.method public static c()Lr1/e$a;
    .locals 1

    new-instance v0, Lr1/e$a;

    invoke-direct {v0}, Lr1/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x2
    .end annotation

    iget-wide v0, p0, Lr1/e;->b:J

    return-wide v0
.end method

.method public b()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/Protobuf;
        tag = 0x1
    .end annotation

    iget-wide v0, p0, Lr1/e;->a:J

    return-wide v0
.end method
