.class public final Lv2/q$b;
.super Lv2/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv2/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lv2/o;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lv2/o;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lv2/o;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method

.method public constructor <init>(Lv2/o;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lv2/o;-><init>(Lv2/o;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lv2/q$b;
    .locals 1

    new-instance v0, Lv2/q$b;

    invoke-super {p0, p1}, Lv2/o;->a(Ljava/lang/Object;)Lv2/o;

    move-result-object p1

    invoke-direct {v0, p1}, Lv2/q$b;-><init>(Lv2/o;)V

    return-object v0
.end method
