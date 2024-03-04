.class final Lv2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lv2/q;

.field public final b:Lv2/q$c;

.field public final c:Lv2/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/e<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv2/q;Lv2/q$c;Lv2/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/q;",
            "Lv2/q$c;",
            "Lv2/e<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/e$b;->a:Lv2/q;

    .line 3
    iput-object p2, p0, Lv2/e$b;->b:Lv2/q$c;

    .line 4
    iput-object p3, p0, Lv2/e$b;->c:Lv2/e$a;

    return-void
.end method
