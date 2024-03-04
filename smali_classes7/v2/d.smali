.class public final synthetic Lv2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/q$c;


# instance fields
.field public final synthetic a:Lv2/e;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lv2/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/d;->a:Lv2/e;

    iput-object p2, p0, Lv2/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lv2/q;Lcom/google/android/exoplayer2/i3;)V
    .locals 2

    iget-object v0, p0, Lv2/d;->a:Lv2/e;

    iget-object v1, p0, Lv2/d;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lv2/e;->A(Lv2/e;Ljava/lang/Object;Lv2/q;Lcom/google/android/exoplayer2/i3;)V

    return-void
.end method
