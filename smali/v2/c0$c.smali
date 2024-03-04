.class final Lv2/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lv2/c0;


# direct methods
.method public constructor <init>(Lv2/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv2/c0$c;->b:Lv2/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lv2/c0$c;->a:I

    return-void
.end method

.method static synthetic d(Lv2/c0$c;)I
    .locals 0

    iget p0, p0, Lv2/c0$c;->a:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv2/c0$c;->b:Lv2/c0;

    iget v1, p0, Lv2/c0$c;->a:I

    invoke-virtual {v0, v1}, Lv2/c0;->X(I)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget-object v0, p0, Lv2/c0$c;->b:Lv2/c0;

    iget v1, p0, Lv2/c0$c;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lv2/c0;->d0(ILcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public c(J)I
    .locals 2

    iget-object v0, p0, Lv2/c0$c;->b:Lv2/c0;

    iget v1, p0, Lv2/c0$c;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lv2/c0;->h0(IJ)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lv2/c0$c;->b:Lv2/c0;

    iget v1, p0, Lv2/c0$c;->a:I

    invoke-virtual {v0, v1}, Lv2/c0;->P(I)Z

    move-result v0

    return v0
.end method
