.class Lhg/i$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lhg/i;


# direct methods
.method constructor <init>(Lhg/i;)V
    .locals 0

    iput-object p1, p0, Lhg/i$j;->a:Lhg/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhg/i$j;->a:Lhg/i;

    invoke-static {v0}, Lhg/i;->w(Lhg/i;)V

    return-void
.end method
