.class public final synthetic Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Le1/a;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->b(Ljava/util/ArrayList;Lcom/facebook/GraphResponse;)V

    return-void
.end method
