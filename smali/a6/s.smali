.class public final synthetic La6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lh6/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lh6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/s;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, La6/s;->b:Lh6/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La6/s;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, La6/s;->b:Lh6/a;

    invoke-static {v0, v1}, La6/t;->d(Ljava/util/Map$Entry;Lh6/a;)V

    return-void
.end method
