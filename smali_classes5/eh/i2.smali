.class abstract Leh/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Leh/t1;JJJJ)Leh/i2;
    .locals 11

    new-instance v10, Leh/y;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Leh/y;-><init>(Leh/t1;JJJJ)V

    return-object v10
.end method


# virtual methods
.method abstract b()Leh/t1;
.end method

.method abstract c()J
.end method

.method abstract d()J
.end method

.method abstract e()J
.end method

.method abstract f()J
.end method
