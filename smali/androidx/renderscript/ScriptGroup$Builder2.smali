.class public final Landroidx/renderscript/ScriptGroup$Builder2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder2"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field mRS:Landroidx/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    return-void
.end method

.method private addInvokeInternal(Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/renderscript/ScriptGroup$Closure;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addKernelInternal(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/Script$KernelID;",
            "Landroidx/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .line 1
    new-instance v6, Landroidx/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/ScriptGroup$Closure;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method private seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, p1, v1

    instance-of v2, v2, Landroidx/renderscript/ScriptGroup$Binding;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_3

    .line 5
    aget-object p2, p1, v1

    instance-of p2, p2, Landroidx/renderscript/ScriptGroup$Binding;

    if-nez p2, :cond_2

    return v0

    .line 6
    :cond_2
    aget-object p2, p1, v1

    check-cast p2, Landroidx/renderscript/ScriptGroup$Binding;

    .line 7
    invoke-virtual {p2}, Landroidx/renderscript/ScriptGroup$Binding;->getField()Landroidx/renderscript/Script$FieldID;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addInput()Landroidx/renderscript/ScriptGroup$Input;
    .locals 2

    .line 1
    new-instance v0, Landroidx/renderscript/ScriptGroup$Input;

    invoke-direct {v0}, Landroidx/renderscript/ScriptGroup$Input;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public varargs addInvoke(Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-direct {p0, p2, v0, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;

    move-result-object p1

    return-object p1
.end method

.method public varargs addKernel(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-direct {p0, p3, v0, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Ljava/lang/String;[Landroidx/renderscript/ScriptGroup$Future;)Landroidx/renderscript/ScriptGroup;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const-string v0, "[^a-zA-Z0-9-]"

    const-string v1, "_"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroidx/renderscript/ScriptGroup;

    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    iget-object v5, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/ScriptGroup;-><init>(Landroidx/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroidx/renderscript/ScriptGroup$Future;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "invalid script group name"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
