module Roadmap
  include HTTParty

  def get_roadmap(roadmap_id)
    response = self.class.get(base_url("roadmaps/#{roadmap_id}"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_checkpoint(checkpoint_id)
    response = self.class.get(base_url("checkpoints/#{checkpoint_id}"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_remaining_checkpoints(chain_id)
    response = self.class.get(base_url("enrollment_chains/#{chain_id}/checkpoints_remaining_in_section"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

end
