.class public final Lh3/t;
.super Lh3/c;
.source "SourceFile"


# instance fields
.field private final h:I

.field private final i:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv2/o0;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lh3/t;-><init>(Lv2/o0;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lv2/o0;IIILjava/lang/Object;)V
    .locals 2
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 2
    invoke-direct {p0, p1, v0, p3}, Lh3/c;-><init>(Lv2/o0;[II)V

    .line 3
    iput p4, p0, Lh3/t;->h:I

    .line 4
    iput-object p5, p0, Lh3/t;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
