.class public Lv7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lv7/a;->a:I

    const/high16 v0, 0x45fa0000    # 8000.0f

    .line 3
    iput v0, p0, Lv7/a;->b:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lv7/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lv7/a;->c:I

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lv7/a;->b:F

    return v0
.end method
