.class Lb2/h$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/h;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lb2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb2/h;


# direct methods
.method constructor <init>(Lb2/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb2/h$a;->a:Lb2/h;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb2/h$a;->a:Lb2/h;

    invoke-static {v0}, Lb2/h;->d(Lb2/h;)V

    return-void
.end method
