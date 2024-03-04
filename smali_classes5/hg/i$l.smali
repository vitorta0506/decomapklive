.class Lhg/i$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private final a:Lhg/i$k;


# direct methods
.method constructor <init>(Lhg/i$k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhg/i$l;->a:Lhg/i$k;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/i$l;->a:Lhg/i$k;

    const/4 v1, 0x0

    iput-object v1, v0, Lhg/i$k;->g:Lio/grpc/d1$c;

    .line 2
    invoke-static {v0}, Lhg/i$k;->c(Lhg/i$k;)V

    return-void
.end method
