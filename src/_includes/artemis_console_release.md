{% if include.release.activemq_tlp %}
  {% assign project_dir = "activemq" %}
  {% assign component_dir = "activemq-artemis-console" %}
{% else %}
  {% assign project_dir = "artemis" %}
  {% assign component_dir = "artemis-console" %}
{% endif %}

#### Apache Artemis Console {{include.release.version}}  ({{include.release.release_date | date_to_string: "ordinal", "US"}})
[Release Notes](release-notes-{{include.release.version}}) | [Documentation](../documentation/)

{% if include.is_current_release %}
  {% capture distro_url_base %}https://www.apache.org/dyn/closer.lua?filename={{project_dir}}/{{component_dir}}/{{include.release.version}}{% endcapture %}
  {% capture verify_url_base %}https://downloads.apache.org/{{project_dir}}/{{component_dir}}/{{include.release.version}}{% endcapture %}
  {% assign distro_url_suffix = "&action=download" %}
{% else %}
  {% capture distro_url_base %}https://archive.apache.org/dist/{{project_dir}}/{{component_dir}}/{{include.release.version}}{% endcapture %}
  {% assign verify_url_base = distro_url_base %}
  {% assign distro_url_suffix = "" %}
{% endif %}

tar.gz |[apache-artemis-console-{{include.release.version}}-bin.tar.gz]({{distro_url_base}}/apache-artemis-console-{{include.release.version}}-bin.tar.gz{{distro_url_suffix}})|[SHA512]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-bin.tar.gz.sha512)|[ASC Signature]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-bin.tar.gz.asc)
ZIP |[apache-artemis-console-{{include.release.version}}-bin.zip]({{distro_url_base}}/apache-artemis-console-{{include.release.version}}-bin.zip{{distro_url_suffix}})|[SHA512]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-bin.zip.sha512)|[ASC Signature]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-bin.zip.asc)
Source tar.gz |[apache-artemis-console-{{include.release.version}}-source-release.tar.gz]({{distro_url_base}}/apache-artemis-console-{{include.release.version}}-source-release.tar.gz{{distro_url_suffix}})|[SHA512]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-source-release.tar.gz.sha512)|[ASC Signature]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-source-release.tar.gz.asc)
Source ZIP |[apache-artemis-console-{{include.release.version}}-source-release.zip]({{distro_url_base}}/apache-artemis-console-{{include.release.version}}-source-release.zip{{distro_url_suffix}})|[SHA512]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-source-release.zip.sha512)|[ASC Signature]({{verify_url_base}}/apache-artemis-console-{{include.release.version}}-source-release.zip.asc)
