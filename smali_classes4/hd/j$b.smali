.class Lhd/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhd/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final synthetic e:Lhd/j;


# direct methods
.method constructor <init>(Lhd/j;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhd/j$b;->e:Lhd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lhd/j$b;->a:I

    .line 3
    iput p3, p0, Lhd/j$b;->b:I

    .line 4
    iput p4, p0, Lhd/j$b;->c:I

    .line 5
    iput p5, p0, Lhd/j$b;->d:I

    return-void
.end method
