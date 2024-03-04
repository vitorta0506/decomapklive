.class final Ly2/e$c;
.super Lx2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private f:Lb2/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/f$a<",
            "Ly2/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb2/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/f$a<",
            "Ly2/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lx2/l;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/e$c;->f:Lb2/f$a;

    return-void
.end method


# virtual methods
.method public final p()V
    .locals 1

    iget-object v0, p0, Ly2/e$c;->f:Lb2/f$a;

    invoke-interface {v0, p0}, Lb2/f$a;->a(Lb2/f;)V

    return-void
.end method
