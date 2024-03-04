.class final Lmg/d$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/nio/channels/Selector;

.field final b:Ljava/nio/channels/Selector;


# direct methods
.method constructor <init>(Ljava/nio/channels/Selector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmg/d$f;->a:Ljava/nio/channels/Selector;

    .line 3
    iput-object p1, p0, Lmg/d$f;->b:Ljava/nio/channels/Selector;

    return-void
.end method

.method constructor <init>(Ljava/nio/channels/Selector;Ljava/nio/channels/Selector;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lmg/d$f;->a:Ljava/nio/channels/Selector;

    .line 6
    iput-object p2, p0, Lmg/d$f;->b:Ljava/nio/channels/Selector;

    return-void
.end method
