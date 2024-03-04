.class public final synthetic Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Ld1/a;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;->a(Ljava/util/List;Lcom/facebook/GraphResponse;)V

    return-void
.end method
