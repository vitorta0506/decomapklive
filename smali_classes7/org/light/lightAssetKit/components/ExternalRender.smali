.class public Lorg/light/lightAssetKit/components/ExternalRender;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/String;

.field private is_external_render_input_flip:Z

.field private is_external_render_output_flip:Z

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->key:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->data:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_input_flip:Z

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_output_flip:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->key:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lorg/light/lightAssetKit/components/ExternalRender;->data:Ljava/lang/String;

    .line 9
    iput-boolean p3, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_input_flip:Z

    .line 10
    iput-boolean p4, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_output_flip:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/ExternalRender;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/ExternalRender;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExternalRender;->key:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->key:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ExternalRender;->data:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->data:Ljava/lang/String;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_input_flip:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_input_flip:Z

    .line 6
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_output_flip:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_output_flip:Z

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_external_render_input_flip()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_input_flip:Z

    return v0
.end method

.method public getIs_external_render_output_flip()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_output_flip:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ExternalRender;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->data:Ljava/lang/String;

    const-string v0, "data"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIs_external_render_input_flip(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_input_flip:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_external_render_input_flip"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIs_external_render_output_flip(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->is_external_render_output_flip:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_external_render_output_flip"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ExternalRender;->key:Ljava/lang/String;

    const-string v0, "key"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "ExternalRender"

    return-object v0
.end method
